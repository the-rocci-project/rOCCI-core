#!/usr/bin/env ruby
#
# OCCI.g
# --
# Generated using ANTLR version: 3.2.1-SNAPSHOT Jul 31, 2010 19:34:52
# Ruby runtime library version: 1.8.11
# Input grammar file: OCCI.g
# Generated at: 2012-03-26 23:16:02
# 

# ~~~> start load path setup
this_directory = File.expand_path( File.dirname( __FILE__ ) )
$LOAD_PATH.unshift( this_directory ) unless $LOAD_PATH.include?( this_directory )

antlr_load_failed = proc do
  load_path = $LOAD_PATH.map { |dir| '  - ' << dir }.join( $/ )
  raise LoadError, <<-END.strip!
  
Failed to load the ANTLR3 runtime library (version 1.8.11):

Ensure the library has been installed on your system and is available
on the load path. If rubygems is available on your system, this can
be done with the command:
  
  gem install antlr3

Current load path:
#{ load_path }

  END
end

defined?( ANTLR3 ) or begin
  
  # 1: try to load the ruby antlr3 runtime library from the system path
  require 'antlr3'
  
rescue LoadError
  
  # 2: try to load rubygems if it isn't already loaded
  defined?( Gem ) or begin
    require 'rubygems'
  rescue LoadError
    antlr_load_failed.call
  end
  
  # 3: try to activate the antlr3 gem
  begin
    Gem.activate( 'antlr3', '~> 1.8.11' )
  rescue Gem::LoadError
    antlr_load_failed.call
  end
  
  require 'antlr3'
  
end
# <~~~ end load path setup

# - - - - - - begin action @parser::header - - - - - -
# OCCI.g

 
	require 'uri' 
	require 'Hashie'
	ATTRIBUTE = { :mutable => true, :required => false, :type => { :string => {} }, :default => '' }

# - - - - - - end action @parser::header - - - - - - -


module OCCI
  # TokenData defines all of the token type integer values
  # as constants, which will be included in all 
  # ANTLR-generated recognizers.
  const_defined?( :TokenData ) or TokenData = ANTLR3::TokenScheme.new

  module TokenData

    # define the token constants
    define_tokens( :T__29 => 29, :T__28 => 28, :T__27 => 27, :T__26 => 26, 
                   :T__25 => 25, :T__24 => 24, :T__23 => 23, :T__22 => 22, 
                   :ESC => 8, :T__21 => 21, :T__20 => 20, :EOF => -1, :T__9 => 9, 
                   :T__19 => 19, :T__16 => 16, :T__15 => 15, :T__18 => 18, 
                   :T__17 => 17, :T__12 => 12, :T__11 => 11, :T__14 => 14, 
                   :T__13 => 13, :T__10 => 10, :DIGIT => 7, :LOALPHA => 5, 
                   :T__42 => 42, :T__43 => 43, :T__40 => 40, :T__41 => 41, 
                   :T__30 => 30, :T__31 => 31, :T__32 => 32, :T__33 => 33, 
                   :WS => 4, :T__34 => 34, :T__35 => 35, :T__36 => 36, :T__37 => 37, 
                   :UPALPHA => 6, :T__38 => 38, :T__39 => 39 )

    # register the proper human-readable name or literal value
    # for each token type
    #
    # this is necessary because anonymous tokens, which are
    # created from literal values in the grammar, do not
    # have descriptive names
    register_names( "WS", "LOALPHA", "UPALPHA", "DIGIT", "ESC", "'Category'", 
                    "':'", "';'", "'scheme'", "'='", "'\"'", "'class'", 
                    "'title'", "'rel'", "'location'", "'attributes'", "'actions'", 
                    "'Link'", "'<'", "'>'", "'self'", "'category'", "'X-OCCI-Attribute'", 
                    "'X-OCCI-Location'", "'@'", "'%'", "'_'", "'\\\\'", 
                    "'+'", "'.'", "'~'", "'#'", "'?'", "'&'", "'/'", "'-'", 
                    "'action'", "'kind'", "'mixin'", "'\\''" )
    
  end


  class Parser < ANTLR3::Parser
    @grammar_home = OCCI

    RULE_METHODS = [ :category, :category_value, :category_term, :category_scheme, 
                     :category_class, :category_title, :category_rel, :category_location, 
                     :category_attributes, :category_actions, :link, :link_value, 
                     :link_target, :link_rel, :link_self, :link_category, 
                     :link_attributes, :x_occi_attribute, :x_occi_location, 
                     :uri, :term, :scheme, :class_type, :title, :rel, :location, 
                     :attribute, :attribute_name, :attribute_component, 
                     :attribute_value, :action_location, :target, :self_location, 
                     :category_name ].freeze


    include TokenData

    begin
      generated_using( "OCCI.g", "3.2.1-SNAPSHOT Jul 31, 2010 19:34:52", "1.8.11" )
    rescue NoMethodError => error
      # ignore
    end

    def initialize( input, options = {} )
      super( input, options )


    end
    # - - - - - - - - - - - - Rules - - - - - - - - - - - - -

    # 
    # parser rule category
    # 
    # (in OCCI.g)
    # 52:1: category returns [mash] : 'Category' ':' category_value ;
    # 
    def category
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 1 )
      mash = nil
      category_value1 = nil

      begin
        # at line 53:4: 'Category' ':' category_value
        match( T__9, TOKENS_FOLLOWING_T__9_IN_category_42 )
        match( T__10, TOKENS_FOLLOWING_T__10_IN_category_44 )
        @state.following.push( TOKENS_FOLLOWING_category_value_IN_category_46 )
        category_value1 = category_value
        @state.following.pop
        # --> action
         mash = category_value1 
        # <-- action

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 1 )

      end
      
      return mash
    end


    # 
    # parser rule category_value
    # 
    # (in OCCI.g)
    # 54:3: category_value returns [mash] : category_term category_scheme category_class ( category_title )? ( category_rel )? ( category_location )? ( category_attributes )? ( category_actions )? ( ';' )? ;
    # 
    def category_value
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 2 )
      mash = nil
      category_class2 = nil
      category_term3 = nil
      category_scheme4 = nil
      category_title5 = nil
      category_rel6 = nil
      category_location7 = nil
      category_attributes8 = nil
      category_actions9 = nil
      # - - - - @init action - - - -
       mash = Hashie::Mash.new( {:kinds=>[],:mixins=>[],:actions=>[] } ) 

      begin
        # at line 56:15: category_term category_scheme category_class ( category_title )? ( category_rel )? ( category_location )? ( category_attributes )? ( category_actions )? ( ';' )?
        @state.following.push( TOKENS_FOLLOWING_category_term_IN_category_value_78 )
        category_term3 = category_term
        @state.following.pop
        @state.following.push( TOKENS_FOLLOWING_category_scheme_IN_category_value_80 )
        category_scheme4 = category_scheme
        @state.following.pop
        @state.following.push( TOKENS_FOLLOWING_category_class_IN_category_value_82 )
        category_class2 = category_class
        @state.following.pop
        # at line 56:60: ( category_title )?
        alt_1 = 2
        look_1_0 = @input.peek( 1 )

        if ( look_1_0 == T__11 )
          look_1_1 = @input.peek( 2 )

          if ( look_1_1 == WS )
            look_1_3 = @input.peek( 3 )

            if ( look_1_3 == T__16 )
              alt_1 = 1
            end
          elsif ( look_1_1 == T__16 )
            alt_1 = 1
          end
        end
        case alt_1
        when 1
          # at line 56:60: category_title
          @state.following.push( TOKENS_FOLLOWING_category_title_IN_category_value_84 )
          category_title5 = category_title
          @state.following.pop

        end
        # at line 56:76: ( category_rel )?
        alt_2 = 2
        look_2_0 = @input.peek( 1 )

        if ( look_2_0 == T__11 )
          look_2_1 = @input.peek( 2 )

          if ( look_2_1 == WS )
            look_2_3 = @input.peek( 3 )

            if ( look_2_3 == T__17 )
              alt_2 = 1
            end
          elsif ( look_2_1 == T__17 )
            alt_2 = 1
          end
        end
        case alt_2
        when 1
          # at line 56:76: category_rel
          @state.following.push( TOKENS_FOLLOWING_category_rel_IN_category_value_87 )
          category_rel6 = category_rel
          @state.following.pop

        end
        # at line 56:90: ( category_location )?
        alt_3 = 2
        look_3_0 = @input.peek( 1 )

        if ( look_3_0 == T__11 )
          look_3_1 = @input.peek( 2 )

          if ( look_3_1 == WS )
            look_3_3 = @input.peek( 3 )

            if ( look_3_3 == T__18 )
              alt_3 = 1
            end
          elsif ( look_3_1 == T__18 )
            alt_3 = 1
          end
        end
        case alt_3
        when 1
          # at line 56:90: category_location
          @state.following.push( TOKENS_FOLLOWING_category_location_IN_category_value_90 )
          category_location7 = category_location
          @state.following.pop

        end
        # at line 56:109: ( category_attributes )?
        alt_4 = 2
        look_4_0 = @input.peek( 1 )

        if ( look_4_0 == T__11 )
          look_4_1 = @input.peek( 2 )

          if ( look_4_1 == WS )
            look_4_3 = @input.peek( 3 )

            if ( look_4_3 == T__19 )
              alt_4 = 1
            end
          elsif ( look_4_1 == T__19 )
            alt_4 = 1
          end
        end
        case alt_4
        when 1
          # at line 56:109: category_attributes
          @state.following.push( TOKENS_FOLLOWING_category_attributes_IN_category_value_93 )
          category_attributes8 = category_attributes
          @state.following.pop

        end
        # at line 56:130: ( category_actions )?
        alt_5 = 2
        look_5_0 = @input.peek( 1 )

        if ( look_5_0 == T__11 )
          look_5_1 = @input.peek( 2 )

          if ( look_5_1 == WS || look_5_1 == T__20 )
            alt_5 = 1
          end
        end
        case alt_5
        when 1
          # at line 56:130: category_actions
          @state.following.push( TOKENS_FOLLOWING_category_actions_IN_category_value_96 )
          category_actions9 = category_actions
          @state.following.pop

        end
        # at line 56:148: ( ';' )?
        alt_6 = 2
        look_6_0 = @input.peek( 1 )

        if ( look_6_0 == T__11 )
          alt_6 = 1
        end
        case alt_6
        when 1
          # at line 56:148: ';'
          match( T__11, TOKENS_FOLLOWING_T__11_IN_category_value_99 )

        end
        # --> action
         type = category_class2
        	               cat = Hashie::Mash.new
        	               cat.term 		= category_term3
        	               cat.scheme 		= category_scheme4
        	               cat.type_identifier	= cat.scheme + cat.term
        	               cat.title		= category_title5
        	               cat.related		= category_rel6
        	               cat.location		= category_location7
        	               cat.attributes		= category_attributes8
        	               cat.actions		= category_actions9
        	               mash[(type+'s').to_sym] 	<< cat
        	             
        # <-- action

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 2 )

      end
      
      return mash
    end


    # 
    # parser rule category_term
    # 
    # (in OCCI.g)
    # 69:3: category_term returns [value] : ( WS )? term ;
    # 
    def category_term
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 3 )
      value = nil
      term10 = nil

      begin
        # at line 69:37: ( WS )? term
        # at line 69:37: ( WS )?
        alt_7 = 2
        look_7_0 = @input.peek( 1 )

        if ( look_7_0 == WS )
          alt_7 = 1
        end
        case alt_7
        when 1
          # at line 69:37: WS
          match( WS, TOKENS_FOLLOWING_WS_IN_category_term_131 )

        end
        @state.following.push( TOKENS_FOLLOWING_term_IN_category_term_134 )
        term10 = term
        @state.following.pop
        # --> action
         value = ( term10 && @input.to_s( term10.start, term10.stop ) ) 
        # <-- action

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 3 )

      end
      
      return value
    end


    # 
    # parser rule category_scheme
    # 
    # (in OCCI.g)
    # 71:3: category_scheme returns [value] : ';' ( WS )? 'scheme' '=' '\"' scheme '\"' ;
    # 
    def category_scheme
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 4 )
      value = nil
      scheme11 = nil

      begin
        # at line 71:37: ';' ( WS )? 'scheme' '=' '\"' scheme '\"'
        match( T__11, TOKENS_FOLLOWING_T__11_IN_category_scheme_160 )
        # at line 71:41: ( WS )?
        alt_8 = 2
        look_8_0 = @input.peek( 1 )

        if ( look_8_0 == WS )
          alt_8 = 1
        end
        case alt_8
        when 1
          # at line 71:41: WS
          match( WS, TOKENS_FOLLOWING_WS_IN_category_scheme_162 )

        end
        match( T__12, TOKENS_FOLLOWING_T__12_IN_category_scheme_165 )
        match( T__13, TOKENS_FOLLOWING_T__13_IN_category_scheme_167 )
        match( T__14, TOKENS_FOLLOWING_T__14_IN_category_scheme_169 )
        @state.following.push( TOKENS_FOLLOWING_scheme_IN_category_scheme_171 )
        scheme11 = scheme
        @state.following.pop
        match( T__14, TOKENS_FOLLOWING_T__14_IN_category_scheme_173 )
        # --> action
         value = ( scheme11 && @input.to_s( scheme11.start, scheme11.stop ) ) 
        # <-- action

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 4 )

      end
      
      return value
    end


    # 
    # parser rule category_class
    # 
    # (in OCCI.g)
    # 73:3: category_class returns [value] : ';' ( WS )? 'class' '=' '\"' class_type '\"' ;
    # 
    def category_class
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 5 )
      value = nil
      class_type12 = nil

      begin
        # at line 73:37: ';' ( WS )? 'class' '=' '\"' class_type '\"'
        match( T__11, TOKENS_FOLLOWING_T__11_IN_category_class_202 )
        # at line 73:41: ( WS )?
        alt_9 = 2
        look_9_0 = @input.peek( 1 )

        if ( look_9_0 == WS )
          alt_9 = 1
        end
        case alt_9
        when 1
          # at line 73:41: WS
          match( WS, TOKENS_FOLLOWING_WS_IN_category_class_204 )

        end
        match( T__15, TOKENS_FOLLOWING_T__15_IN_category_class_207 )
        match( T__13, TOKENS_FOLLOWING_T__13_IN_category_class_209 )
        match( T__14, TOKENS_FOLLOWING_T__14_IN_category_class_211 )
        @state.following.push( TOKENS_FOLLOWING_class_type_IN_category_class_213 )
        class_type12 = class_type
        @state.following.pop
        match( T__14, TOKENS_FOLLOWING_T__14_IN_category_class_215 )
        # --> action
         value = ( class_type12 && @input.to_s( class_type12.start, class_type12.stop ) ) 
        # <-- action

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 5 )

      end
      
      return value
    end


    # 
    # parser rule category_title
    # 
    # (in OCCI.g)
    # 75:3: category_title returns [value] : ';' ( WS )? 'title' '=' '\"' title '\"' ;
    # 
    def category_title
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 6 )
      value = nil
      title13 = nil

      begin
        # at line 75:37: ';' ( WS )? 'title' '=' '\"' title '\"'
        match( T__11, TOKENS_FOLLOWING_T__11_IN_category_title_240 )
        # at line 75:41: ( WS )?
        alt_10 = 2
        look_10_0 = @input.peek( 1 )

        if ( look_10_0 == WS )
          alt_10 = 1
        end
        case alt_10
        when 1
          # at line 75:41: WS
          match( WS, TOKENS_FOLLOWING_WS_IN_category_title_242 )

        end
        match( T__16, TOKENS_FOLLOWING_T__16_IN_category_title_245 )
        match( T__13, TOKENS_FOLLOWING_T__13_IN_category_title_247 )
        match( T__14, TOKENS_FOLLOWING_T__14_IN_category_title_249 )
        @state.following.push( TOKENS_FOLLOWING_title_IN_category_title_251 )
        title13 = title
        @state.following.pop
        match( T__14, TOKENS_FOLLOWING_T__14_IN_category_title_253 )
        # --> action
         value = ( title13 && @input.to_s( title13.start, title13.stop ) ) 
        # <-- action

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 6 )

      end
      
      return value
    end


    # 
    # parser rule category_rel
    # 
    # (in OCCI.g)
    # 77:3: category_rel returns [value] : ';' ( WS )? 'rel' '=' '\"' rel '\"' ;
    # 
    def category_rel
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 7 )
      value = nil
      rel14 = nil

      begin
        # at line 77:35: ';' ( WS )? 'rel' '=' '\"' rel '\"'
        match( T__11, TOKENS_FOLLOWING_T__11_IN_category_rel_280 )
        # at line 77:39: ( WS )?
        alt_11 = 2
        look_11_0 = @input.peek( 1 )

        if ( look_11_0 == WS )
          alt_11 = 1
        end
        case alt_11
        when 1
          # at line 77:39: WS
          match( WS, TOKENS_FOLLOWING_WS_IN_category_rel_282 )

        end
        match( T__17, TOKENS_FOLLOWING_T__17_IN_category_rel_285 )
        match( T__13, TOKENS_FOLLOWING_T__13_IN_category_rel_287 )
        match( T__14, TOKENS_FOLLOWING_T__14_IN_category_rel_289 )
        @state.following.push( TOKENS_FOLLOWING_rel_IN_category_rel_291 )
        rel14 = rel
        @state.following.pop
        match( T__14, TOKENS_FOLLOWING_T__14_IN_category_rel_293 )
        # --> action
         value = ( rel14 && @input.to_s( rel14.start, rel14.stop ) ) 
        # <-- action

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 7 )

      end
      
      return value
    end


    # 
    # parser rule category_location
    # 
    # (in OCCI.g)
    # 79:3: category_location returns [value] : ';' ( WS )? 'location' '=' '\"' location '\"' ;
    # 
    def category_location
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 8 )
      value = nil
      location15 = nil

      begin
        # at line 79:39: ';' ( WS )? 'location' '=' '\"' location '\"'
        match( T__11, TOKENS_FOLLOWING_T__11_IN_category_location_318 )
        # at line 79:43: ( WS )?
        alt_12 = 2
        look_12_0 = @input.peek( 1 )

        if ( look_12_0 == WS )
          alt_12 = 1
        end
        case alt_12
        when 1
          # at line 79:43: WS
          match( WS, TOKENS_FOLLOWING_WS_IN_category_location_320 )

        end
        match( T__18, TOKENS_FOLLOWING_T__18_IN_category_location_323 )
        match( T__13, TOKENS_FOLLOWING_T__13_IN_category_location_325 )
        match( T__14, TOKENS_FOLLOWING_T__14_IN_category_location_327 )
        @state.following.push( TOKENS_FOLLOWING_location_IN_category_location_329 )
        location15 = location
        @state.following.pop
        match( T__14, TOKENS_FOLLOWING_T__14_IN_category_location_331 )
        # --> action
         value = ( location15 && @input.to_s( location15.start, location15.stop ) ) 
        # <-- action

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 8 )

      end
      
      return value
    end


    # 
    # parser rule category_attributes
    # 
    # (in OCCI.g)
    # 81:3: category_attributes returns [mash] : ';' ( WS )? 'attributes' '=' '\"' attr= attribute_name ( ( WS )? next_attr= attribute_name )* '\"' ;
    # 
    def category_attributes
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 9 )
      mash = nil
      attr = nil
      next_attr = nil
      # - - - - @init action - - - -
      mash = Hashie::Mash.new

      begin
        # at line 82:10: ';' ( WS )? 'attributes' '=' '\"' attr= attribute_name ( ( WS )? next_attr= attribute_name )* '\"'
        match( T__11, TOKENS_FOLLOWING_T__11_IN_category_attributes_370 )
        # at line 82:14: ( WS )?
        alt_13 = 2
        look_13_0 = @input.peek( 1 )

        if ( look_13_0 == WS )
          alt_13 = 1
        end
        case alt_13
        when 1
          # at line 82:14: WS
          match( WS, TOKENS_FOLLOWING_WS_IN_category_attributes_372 )

        end
        match( T__19, TOKENS_FOLLOWING_T__19_IN_category_attributes_375 )
        match( T__13, TOKENS_FOLLOWING_T__13_IN_category_attributes_377 )
        match( T__14, TOKENS_FOLLOWING_T__14_IN_category_attributes_379 )
        @state.following.push( TOKENS_FOLLOWING_attribute_name_IN_category_attributes_383 )
        attr = attribute_name
        @state.following.pop
        # --> action
         mash.merge!(attr) 
        # <-- action
        # at line 83:10: ( ( WS )? next_attr= attribute_name )*
        while true # decision 15
          alt_15 = 2
          look_15_0 = @input.peek( 1 )

          if ( look_15_0.between?( WS, LOALPHA ) )
            alt_15 = 1

          end
          case alt_15
          when 1
            # at line 83:12: ( WS )? next_attr= attribute_name
            # at line 83:12: ( WS )?
            alt_14 = 2
            look_14_0 = @input.peek( 1 )

            if ( look_14_0 == WS )
              alt_14 = 1
            end
            case alt_14
            when 1
              # at line 83:12: WS
              match( WS, TOKENS_FOLLOWING_WS_IN_category_attributes_399 )

            end
            @state.following.push( TOKENS_FOLLOWING_attribute_name_IN_category_attributes_404 )
            next_attr = attribute_name
            @state.following.pop
            # --> action
             mash.merge!(next_attr) 
            # <-- action

          else
            break # out of loop for decision 15
          end
        end # loop for decision 15
        match( T__14, TOKENS_FOLLOWING_T__14_IN_category_attributes_412 )

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 9 )

      end
      
      return mash
    end


    # 
    # parser rule category_actions
    # 
    # (in OCCI.g)
    # 84:3: category_actions returns [array] : ';' ( WS )? 'actions' '=' '\"' act= action_location ( ( WS )? next_act= action_location )* '\"' ;
    # 
    def category_actions
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 10 )
      array = nil
      act = nil
      next_act = nil
      # - - - - @init action - - - -
      array = Array.new

      begin
        # at line 85:10: ';' ( WS )? 'actions' '=' '\"' act= action_location ( ( WS )? next_act= action_location )* '\"'
        match( T__11, TOKENS_FOLLOWING_T__11_IN_category_actions_442 )
        # at line 85:14: ( WS )?
        alt_16 = 2
        look_16_0 = @input.peek( 1 )

        if ( look_16_0 == WS )
          alt_16 = 1
        end
        case alt_16
        when 1
          # at line 85:14: WS
          match( WS, TOKENS_FOLLOWING_WS_IN_category_actions_444 )

        end
        match( T__20, TOKENS_FOLLOWING_T__20_IN_category_actions_447 )
        match( T__13, TOKENS_FOLLOWING_T__13_IN_category_actions_449 )
        match( T__14, TOKENS_FOLLOWING_T__14_IN_category_actions_451 )
        @state.following.push( TOKENS_FOLLOWING_action_location_IN_category_actions_455 )
        act = action_location
        @state.following.pop
        # --> action
         array << ( act && @input.to_s( act.start, act.stop ) ) 
        # <-- action
        # at line 86:10: ( ( WS )? next_act= action_location )*
        while true # decision 18
          alt_18 = 2
          look_18_0 = @input.peek( 1 )

          if ( look_18_0.between?( WS, DIGIT ) || look_18_0 == T__10 || look_18_0 == T__13 || look_18_0.between?( T__28, T__42 ) )
            alt_18 = 1

          end
          case alt_18
          when 1
            # at line 86:12: ( WS )? next_act= action_location
            # at line 86:12: ( WS )?
            alt_17 = 2
            look_17_0 = @input.peek( 1 )

            if ( look_17_0 == WS )
              alt_17 = 1
            end
            case alt_17
            when 1
              # at line 86:12: WS
              match( WS, TOKENS_FOLLOWING_WS_IN_category_actions_471 )

            end
            @state.following.push( TOKENS_FOLLOWING_action_location_IN_category_actions_476 )
            next_act = action_location
            @state.following.pop
            # --> action
             array << ( next_act && @input.to_s( next_act.start, next_act.stop ) ) 
            # <-- action

          else
            break # out of loop for decision 18
          end
        end # loop for decision 18
        match( T__14, TOKENS_FOLLOWING_T__14_IN_category_actions_483 )

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 10 )

      end
      
      return array
    end


    # 
    # parser rule link
    # 
    # (in OCCI.g)
    # 97:1: link returns [mash] : 'Link' ':' link_value ;
    # 
    def link
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 11 )
      mash = nil
      link_value16 = nil
      # - - - - @init action - - - -
      mash = Hashie::Mash.new

      begin
        # at line 99:4: 'Link' ':' link_value
        match( T__21, TOKENS_FOLLOWING_T__21_IN_link_505 )
        match( T__10, TOKENS_FOLLOWING_T__10_IN_link_507 )
        @state.following.push( TOKENS_FOLLOWING_link_value_IN_link_509 )
        link_value16 = link_value
        @state.following.pop
        # --> action
         mash = link_value16 
        # <-- action

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 11 )

      end
      
      return mash
    end


    # 
    # parser rule link_value
    # 
    # (in OCCI.g)
    # 100:2: link_value returns [mash] : link_target link_rel ( link_self )? ( link_category )? link_attributes ( ';' )? ;
    # 
    def link_value
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 12 )
      mash = nil
      link_target17 = nil
      link_rel18 = nil
      link_self19 = nil
      link_category20 = nil
      link_attributes21 = nil
      # - - - - @init action - - - -
       mash = Hashie::Mash.new 

      begin
        # at line 102:6: link_target link_rel ( link_self )? ( link_category )? link_attributes ( ';' )?
        @state.following.push( TOKENS_FOLLOWING_link_target_IN_link_value_531 )
        link_target17 = link_target
        @state.following.pop
        # --> action
         mash[:target] = link_target17 
        # <-- action
        @state.following.push( TOKENS_FOLLOWING_link_rel_IN_link_value_540 )
        link_rel18 = link_rel
        @state.following.pop
        # --> action
         mash[:rel] = link_rel18 
        # <-- action
        # at line 104:6: ( link_self )?
        alt_19 = 2
        look_19_0 = @input.peek( 1 )

        if ( look_19_0 == T__11 )
          look_19_1 = @input.peek( 2 )

          if ( look_19_1 == WS )
            look_19_3 = @input.peek( 3 )

            if ( look_19_3 == T__24 )
              alt_19 = 1
            end
          elsif ( look_19_1 == T__24 )
            alt_19 = 1
          end
        end
        case alt_19
        when 1
          # at line 104:6: link_self
          @state.following.push( TOKENS_FOLLOWING_link_self_IN_link_value_549 )
          link_self19 = link_self
          @state.following.pop

        end
        # --> action
         mash[:self] = link_self19 
        # <-- action
        # at line 105:6: ( link_category )?
        alt_20 = 2
        look_20_0 = @input.peek( 1 )

        if ( look_20_0 == T__11 )
          look_20_1 = @input.peek( 2 )

          if ( look_20_1 == WS )
            look_20_3 = @input.peek( 3 )

            if ( look_20_3 == T__25 )
              alt_20 = 1
            end
          elsif ( look_20_1 == T__25 )
            alt_20 = 1
          end
        end
        case alt_20
        when 1
          # at line 105:6: link_category
          @state.following.push( TOKENS_FOLLOWING_link_category_IN_link_value_559 )
          link_category20 = link_category
          @state.following.pop

        end
        # --> action
         mash[:category] = link_category20 
        # <-- action
        @state.following.push( TOKENS_FOLLOWING_link_attributes_IN_link_value_569 )
        link_attributes21 = link_attributes
        @state.following.pop
        # --> action
         mash[:attributes] = link_attributes21 
        # <-- action
        # at line 107:6: ( ';' )?
        alt_21 = 2
        look_21_0 = @input.peek( 1 )

        if ( look_21_0 == T__11 )
          alt_21 = 1
        end
        case alt_21
        when 1
          # at line 107:6: ';'
          match( T__11, TOKENS_FOLLOWING_T__11_IN_link_value_578 )

        end

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 12 )

      end
      
      return mash
    end


    # 
    # parser rule link_target
    # 
    # (in OCCI.g)
    # 109:2: link_target returns [value] : ( WS )? '<' target '>' ;
    # 
    def link_target
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 13 )
      value = nil
      target22 = nil

      begin
        # at line 109:32: ( WS )? '<' target '>'
        # at line 109:32: ( WS )?
        alt_22 = 2
        look_22_0 = @input.peek( 1 )

        if ( look_22_0 == WS )
          alt_22 = 1
        end
        case alt_22
        when 1
          # at line 109:32: WS
          match( WS, TOKENS_FOLLOWING_WS_IN_link_target_597 )

        end
        match( T__22, TOKENS_FOLLOWING_T__22_IN_link_target_600 )
        @state.following.push( TOKENS_FOLLOWING_target_IN_link_target_602 )
        target22 = target
        @state.following.pop
        match( T__23, TOKENS_FOLLOWING_T__23_IN_link_target_604 )
        # --> action
         value = ( target22 && @input.to_s( target22.start, target22.stop ) ) 
        # <-- action

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 13 )

      end
      
      return value
    end


    # 
    # parser rule link_rel
    # 
    # (in OCCI.g)
    # 110:2: link_rel returns [value] : ';' ( WS )? 'rel' '=' '\"' rel '\"' ;
    # 
    def link_rel
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 14 )
      value = nil
      rel23 = nil

      begin
        # at line 110:30: ';' ( WS )? 'rel' '=' '\"' rel '\"'
        match( T__11, TOKENS_FOLLOWING_T__11_IN_link_rel_619 )
        # at line 110:34: ( WS )?
        alt_23 = 2
        look_23_0 = @input.peek( 1 )

        if ( look_23_0 == WS )
          alt_23 = 1
        end
        case alt_23
        when 1
          # at line 110:34: WS
          match( WS, TOKENS_FOLLOWING_WS_IN_link_rel_621 )

        end
        match( T__17, TOKENS_FOLLOWING_T__17_IN_link_rel_624 )
        match( T__13, TOKENS_FOLLOWING_T__13_IN_link_rel_626 )
        match( T__14, TOKENS_FOLLOWING_T__14_IN_link_rel_628 )
        @state.following.push( TOKENS_FOLLOWING_rel_IN_link_rel_630 )
        rel23 = rel
        @state.following.pop
        match( T__14, TOKENS_FOLLOWING_T__14_IN_link_rel_632 )
        # --> action
         value = ( rel23 && @input.to_s( rel23.start, rel23.stop ) ) 
        # <-- action

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 14 )

      end
      
      return value
    end


    # 
    # parser rule link_self
    # 
    # (in OCCI.g)
    # 111:2: link_self returns [value] : ';' ( WS )? 'self' '=' '\"' self_location '\"' ;
    # 
    def link_self
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 15 )
      value = nil
      self_location24 = nil

      begin
        # at line 111:31: ';' ( WS )? 'self' '=' '\"' self_location '\"'
        match( T__11, TOKENS_FOLLOWING_T__11_IN_link_self_647 )
        # at line 111:35: ( WS )?
        alt_24 = 2
        look_24_0 = @input.peek( 1 )

        if ( look_24_0 == WS )
          alt_24 = 1
        end
        case alt_24
        when 1
          # at line 111:35: WS
          match( WS, TOKENS_FOLLOWING_WS_IN_link_self_649 )

        end
        match( T__24, TOKENS_FOLLOWING_T__24_IN_link_self_652 )
        match( T__13, TOKENS_FOLLOWING_T__13_IN_link_self_654 )
        match( T__14, TOKENS_FOLLOWING_T__14_IN_link_self_656 )
        @state.following.push( TOKENS_FOLLOWING_self_location_IN_link_self_658 )
        self_location24 = self_location
        @state.following.pop
        match( T__14, TOKENS_FOLLOWING_T__14_IN_link_self_660 )
        # --> action
         value = ( self_location24 && @input.to_s( self_location24.start, self_location24.stop ) ) 
        # <-- action

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 15 )

      end
      
      return value
    end


    # 
    # parser rule link_category
    # 
    # (in OCCI.g)
    # 112:2: link_category returns [value] : ';' ( WS )? 'category' '=' '\"' category_name '\"' ;
    # 
    def link_category
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 16 )
      value = nil
      category_name25 = nil

      begin
        # at line 112:35: ';' ( WS )? 'category' '=' '\"' category_name '\"'
        match( T__11, TOKENS_FOLLOWING_T__11_IN_link_category_675 )
        # at line 112:39: ( WS )?
        alt_25 = 2
        look_25_0 = @input.peek( 1 )

        if ( look_25_0 == WS )
          alt_25 = 1
        end
        case alt_25
        when 1
          # at line 112:39: WS
          match( WS, TOKENS_FOLLOWING_WS_IN_link_category_677 )

        end
        match( T__25, TOKENS_FOLLOWING_T__25_IN_link_category_680 )
        match( T__13, TOKENS_FOLLOWING_T__13_IN_link_category_682 )
        match( T__14, TOKENS_FOLLOWING_T__14_IN_link_category_684 )
        @state.following.push( TOKENS_FOLLOWING_category_name_IN_link_category_686 )
        category_name25 = category_name
        @state.following.pop
        match( T__14, TOKENS_FOLLOWING_T__14_IN_link_category_688 )
        # --> action
         value = ( category_name25 && @input.to_s( category_name25.start, category_name25.stop ) ) 
        # <-- action

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 16 )

      end
      
      return value
    end


    # 
    # parser rule link_attributes
    # 
    # (in OCCI.g)
    # 113:2: link_attributes returns [mash] : ( ';' ( WS )? attribute )* ;
    # 
    def link_attributes
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 17 )
      mash = nil
      attribute26 = nil
      # - - - - @init action - - - -
       mash = Hashie::Mash.new 

      begin
        # at line 114:8: ( ';' ( WS )? attribute )*
        # at line 114:8: ( ';' ( WS )? attribute )*
        while true # decision 27
          alt_27 = 2
          look_27_0 = @input.peek( 1 )

          if ( look_27_0 == T__11 )
            look_27_1 = @input.peek( 2 )

            if ( look_27_1.between?( WS, LOALPHA ) )
              alt_27 = 1

            end

          end
          case alt_27
          when 1
            # at line 114:9: ';' ( WS )? attribute
            match( T__11, TOKENS_FOLLOWING_T__11_IN_link_attributes_714 )
            # at line 114:13: ( WS )?
            alt_26 = 2
            look_26_0 = @input.peek( 1 )

            if ( look_26_0 == WS )
              alt_26 = 1
            end
            case alt_26
            when 1
              # at line 114:13: WS
              match( WS, TOKENS_FOLLOWING_WS_IN_link_attributes_716 )

            end
            @state.following.push( TOKENS_FOLLOWING_attribute_IN_link_attributes_719 )
            attribute26 = attribute
            @state.following.pop
            # --> action
             mash.merge!(attribute26) 
            # <-- action

          else
            break # out of loop for decision 27
          end
        end # loop for decision 27

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 17 )

      end
      
      return mash
    end


    # 
    # parser rule x_occi_attribute
    # 
    # (in OCCI.g)
    # 126:1: x_occi_attribute returns [mash] : 'X-OCCI-Attribute' ':' ( WS )? attribute ( ';' )? ;
    # 
    def x_occi_attribute
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 18 )
      mash = nil
      attribute27 = nil
      # - - - - @init action - - - -
       mash = Hashie::Mash.new 

      begin
        # at line 128:4: 'X-OCCI-Attribute' ':' ( WS )? attribute ( ';' )?
        match( T__26, TOKENS_FOLLOWING_T__26_IN_x_occi_attribute_746 )
        match( T__10, TOKENS_FOLLOWING_T__10_IN_x_occi_attribute_748 )
        # at line 128:27: ( WS )?
        alt_28 = 2
        look_28_0 = @input.peek( 1 )

        if ( look_28_0 == WS )
          alt_28 = 1
        end
        case alt_28
        when 1
          # at line 128:27: WS
          match( WS, TOKENS_FOLLOWING_WS_IN_x_occi_attribute_750 )

        end
        @state.following.push( TOKENS_FOLLOWING_attribute_IN_x_occi_attribute_753 )
        attribute27 = attribute
        @state.following.pop
        # at line 128:41: ( ';' )?
        alt_29 = 2
        look_29_0 = @input.peek( 1 )

        if ( look_29_0 == T__11 )
          alt_29 = 1
        end
        case alt_29
        when 1
          # at line 128:41: ';'
          match( T__11, TOKENS_FOLLOWING_T__11_IN_x_occi_attribute_755 )

        end
        # --> action
         mash = attribute27 
        # <-- action

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 18 )

      end
      
      return mash
    end


    # 
    # parser rule x_occi_location
    # 
    # (in OCCI.g)
    # 136:1: x_occi_location returns [uri] : 'X-OCCI-Location' ':' ( WS )? location ( ';' )? ;
    # 
    def x_occi_location
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 19 )
      uri = nil
      location28 = nil

      begin
        # at line 137:4: 'X-OCCI-Location' ':' ( WS )? location ( ';' )?
        match( T__27, TOKENS_FOLLOWING_T__27_IN_x_occi_location_775 )
        match( T__10, TOKENS_FOLLOWING_T__10_IN_x_occi_location_777 )
        # at line 137:26: ( WS )?
        alt_30 = 2
        look_30_0 = @input.peek( 1 )

        if ( look_30_0 == WS )
          alt_30 = 1
        end
        case alt_30
        when 1
          # at line 137:26: WS
          match( WS, TOKENS_FOLLOWING_WS_IN_x_occi_location_779 )

        end
        @state.following.push( TOKENS_FOLLOWING_location_IN_x_occi_location_782 )
        location28 = location
        @state.following.pop
        # at line 137:39: ( ';' )?
        alt_31 = 2
        look_31_0 = @input.peek( 1 )

        if ( look_31_0 == T__11 )
          alt_31 = 1
        end
        case alt_31
        when 1
          # at line 137:39: ';'
          match( T__11, TOKENS_FOLLOWING_T__11_IN_x_occi_location_784 )

        end
        # --> action
         uri = URI.parse(( location28 && @input.to_s( location28.start, location28.stop ) )) 
        # <-- action

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 19 )

      end
      
      return uri
    end


    # 
    # parser rule uri
    # 
    # (in OCCI.g)
    # 139:1: uri : ( LOALPHA | UPALPHA | DIGIT | '@' | ':' | '%' | '_' | '\\\\' | '+' | '.' | '~' | '#' | '?' | '&' | '/' | '=' | '-' | 'action' | 'kind' | 'mixin' )+ ;
    # 
    def uri
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 20 )

      begin
        # at line 139:9: ( LOALPHA | UPALPHA | DIGIT | '@' | ':' | '%' | '_' | '\\\\' | '+' | '.' | '~' | '#' | '?' | '&' | '/' | '=' | '-' | 'action' | 'kind' | 'mixin' )+
        # at file 139:9: ( LOALPHA | UPALPHA | DIGIT | '@' | ':' | '%' | '_' | '\\\\' | '+' | '.' | '~' | '#' | '?' | '&' | '/' | '=' | '-' | 'action' | 'kind' | 'mixin' )+
        match_count_32 = 0
        while true
          alt_32 = 2
          look_32_0 = @input.peek( 1 )

          if ( look_32_0.between?( LOALPHA, DIGIT ) || look_32_0 == T__10 || look_32_0 == T__13 || look_32_0.between?( T__28, T__42 ) )
            alt_32 = 1

          end
          case alt_32
          when 1
            # at line 
            if @input.peek( 1 ).between?( LOALPHA, DIGIT ) || @input.peek(1) == T__10 || @input.peek(1) == T__13 || @input.peek( 1 ).between?( T__28, T__42 )
              @input.consume
              @state.error_recovery = false
            else
              mse = MismatchedSet( nil )
              raise mse
            end



          else
            match_count_32 > 0 and break
            eee = EarlyExit(32)


            raise eee
          end
          match_count_32 += 1
        end


      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 20 )

      end
      
      return 
    end

    TermReturnValue = define_return_scope 

    # 
    # parser rule term
    # 
    # (in OCCI.g)
    # 140:1: term : LOALPHA ( LOALPHA | DIGIT | '-' | '_' )* ;
    # 
    def term
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 21 )
      return_value = TermReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      begin
        # at line 140:10: LOALPHA ( LOALPHA | DIGIT | '-' | '_' )*
        match( LOALPHA, TOKENS_FOLLOWING_LOALPHA_IN_term_888 )
        # at line 140:18: ( LOALPHA | DIGIT | '-' | '_' )*
        while true # decision 33
          alt_33 = 2
          look_33_0 = @input.peek( 1 )

          if ( look_33_0 == LOALPHA || look_33_0 == DIGIT || look_33_0 == T__30 || look_33_0 == T__39 )
            alt_33 = 1

          end
          case alt_33
          when 1
            # at line 
            if @input.peek(1) == LOALPHA || @input.peek(1) == DIGIT || @input.peek(1) == T__30 || @input.peek(1) == T__39
              @input.consume
              @state.error_recovery = false
            else
              mse = MismatchedSet( nil )
              raise mse
            end



          else
            break # out of loop for decision 33
          end
        end # loop for decision 33
        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look( -1 )

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 21 )

      end
      
      return return_value
    end

    SchemeReturnValue = define_return_scope 

    # 
    # parser rule scheme
    # 
    # (in OCCI.g)
    # 141:1: scheme : uri ;
    # 
    def scheme
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 22 )
      return_value = SchemeReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      begin
        # at line 141:20: uri
        @state.following.push( TOKENS_FOLLOWING_uri_IN_scheme_923 )
        uri
        @state.following.pop
        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look( -1 )

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 22 )

      end
      
      return return_value
    end

    ClassTypeReturnValue = define_return_scope 

    # 
    # parser rule class_type
    # 
    # (in OCCI.g)
    # 142:1: class_type : ( 'kind' | 'mixin' | 'action' ) ;
    # 
    def class_type
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 23 )
      return_value = ClassTypeReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      begin
        # at line 142:15: ( 'kind' | 'mixin' | 'action' )
        if @input.peek( 1 ).between?( T__40, T__42 )
          @input.consume
          @state.error_recovery = false
        else
          mse = MismatchedSet( nil )
          raise mse
        end


        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look( -1 )

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 23 )

      end
      
      return return_value
    end

    TitleReturnValue = define_return_scope 

    # 
    # parser rule title
    # 
    # (in OCCI.g)
    # 143:1: title : ( ESC | ~ ( '\\\\' | '\"' | '\\'' ) | '\\'' )* ;
    # 
    def title
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 24 )
      return_value = TitleReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      begin
        # at line 143:11: ( ESC | ~ ( '\\\\' | '\"' | '\\'' ) | '\\'' )*
        # at line 143:11: ( ESC | ~ ( '\\\\' | '\"' | '\\'' ) | '\\'' )*
        while true # decision 34
          alt_34 = 2
          look_34_0 = @input.peek( 1 )

          if ( look_34_0.between?( WS, T__13 ) || look_34_0.between?( T__15, T__30 ) || look_34_0.between?( T__32, T__43 ) )
            alt_34 = 1

          end
          case alt_34
          when 1
            # at line 
            if @input.peek( 1 ).between?( WS, T__13 ) || @input.peek( 1 ).between?( T__15, T__30 ) || @input.peek( 1 ).between?( T__32, T__43 )
              @input.consume
              @state.error_recovery = false
            else
              mse = MismatchedSet( nil )
              raise mse
            end



          else
            break # out of loop for decision 34
          end
        end # loop for decision 34
        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look( -1 )

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 24 )

      end
      
      return return_value
    end

    RelReturnValue = define_return_scope 

    # 
    # parser rule rel
    # 
    # (in OCCI.g)
    # 144:1: rel : uri ;
    # 
    def rel
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 25 )
      return_value = RelReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      begin
        # at line 144:9: uri
        @state.following.push( TOKENS_FOLLOWING_uri_IN_rel_988 )
        uri
        @state.following.pop
        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look( -1 )

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 25 )

      end
      
      return return_value
    end

    LocationReturnValue = define_return_scope 

    # 
    # parser rule location
    # 
    # (in OCCI.g)
    # 145:1: location : uri ;
    # 
    def location
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 26 )
      return_value = LocationReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      begin
        # at line 145:13: uri
        @state.following.push( TOKENS_FOLLOWING_uri_IN_location_996 )
        uri
        @state.following.pop
        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look( -1 )

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 26 )

      end
      
      return return_value
    end


    # 
    # parser rule attribute
    # 
    # (in OCCI.g)
    # 146:1: attribute returns [mash] : comp_first= attribute_component ( '.' comp_next= attribute_component )* '=' attribute_value ;
    # 
    def attribute
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 27 )
      mash = nil
      comp_first = nil
      comp_next = nil
      attribute_value29 = nil
      # - - - - @init action - - - -
       mash = Hashie::Mash.new 

      begin
        # at line 147:6: comp_first= attribute_component ( '.' comp_next= attribute_component )* '=' attribute_value
        @state.following.push( TOKENS_FOLLOWING_attribute_component_IN_attribute_1018 )
        comp_first = attribute_component
        @state.following.pop
        # --> action
         cur_mash = mash; comp = ( comp_first && @input.to_s( comp_first.start, comp_first.stop ) ) 
        # <-- action
        # at line 148:6: ( '.' comp_next= attribute_component )*
        while true # decision 35
          alt_35 = 2
          look_35_0 = @input.peek( 1 )

          if ( look_35_0 == T__33 )
            alt_35 = 1

          end
          case alt_35
          when 1
            # at line 148:8: '.' comp_next= attribute_component
            match( T__33, TOKENS_FOLLOWING_T__33_IN_attribute_1030 )
            @state.following.push( TOKENS_FOLLOWING_attribute_component_IN_attribute_1034 )
            comp_next = attribute_component
            @state.following.pop
            # --> action
             cur_mash[comp.to_sym] = Hashie::Mash.new; cur_mash = cur_mash[comp.to_sym]; comp = ( comp_next && @input.to_s( comp_next.start, comp_next.stop ) ) 
            # <-- action

          else
            break # out of loop for decision 35
          end
        end # loop for decision 35
        match( T__13, TOKENS_FOLLOWING_T__13_IN_attribute_1046 )
        @state.following.push( TOKENS_FOLLOWING_attribute_value_IN_attribute_1048 )
        attribute_value29 = attribute_value
        @state.following.pop
        # --> action
         cur_mash[comp.to_sym] = ( attribute_value29 && @input.to_s( attribute_value29.start, attribute_value29.stop ) ) 
        # <-- action

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 27 )

      end
      
      return mash
    end


    # 
    # parser rule attribute_name
    # 
    # (in OCCI.g)
    # 150:1: attribute_name returns [mash] : comp_first= attribute_component ( '.' comp_next= attribute_component )* ;
    # 
    def attribute_name
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 28 )
      mash = nil
      comp_first = nil
      comp_next = nil
      # - - - - @init action - - - -
       mash = Hashie::Mash.new 

      begin
        # at line 151:27: comp_first= attribute_component ( '.' comp_next= attribute_component )*
        @state.following.push( TOKENS_FOLLOWING_attribute_component_IN_attribute_name_1092 )
        comp_first = attribute_component
        @state.following.pop
        # --> action
         cur_mash = mash; comp = ( comp_first && @input.to_s( comp_first.start, comp_first.stop ) ) 
        # <-- action
        # at line 152:6: ( '.' comp_next= attribute_component )*
        while true # decision 36
          alt_36 = 2
          look_36_0 = @input.peek( 1 )

          if ( look_36_0 == T__33 )
            alt_36 = 1

          end
          case alt_36
          when 1
            # at line 152:8: '.' comp_next= attribute_component
            match( T__33, TOKENS_FOLLOWING_T__33_IN_attribute_name_1104 )
            @state.following.push( TOKENS_FOLLOWING_attribute_component_IN_attribute_name_1108 )
            comp_next = attribute_component
            @state.following.pop
            # --> action
             cur_mash[comp.to_sym] = Hashie::Mash.new; cur_mash = cur_mash[comp.to_sym]; comp = ( comp_next && @input.to_s( comp_next.start, comp_next.stop ) ) 
            # <-- action

          else
            break # out of loop for decision 36
          end
        end # loop for decision 36
        # --> action
         cur_mash[comp.to_sym] = ATTRIBUTE 
        # <-- action

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 28 )

      end
      
      return mash
    end

    AttributeComponentReturnValue = define_return_scope 

    # 
    # parser rule attribute_component
    # 
    # (in OCCI.g)
    # 154:1: attribute_component : LOALPHA ( LOALPHA | DIGIT | '-' | '_' )* ;
    # 
    def attribute_component
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 29 )
      return_value = AttributeComponentReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      begin
        # at line 154:23: LOALPHA ( LOALPHA | DIGIT | '-' | '_' )*
        match( LOALPHA, TOKENS_FOLLOWING_LOALPHA_IN_attribute_component_1128 )
        # at line 154:31: ( LOALPHA | DIGIT | '-' | '_' )*
        while true # decision 37
          alt_37 = 2
          look_37_0 = @input.peek( 1 )

          if ( look_37_0 == LOALPHA || look_37_0 == DIGIT || look_37_0 == T__30 || look_37_0 == T__39 )
            alt_37 = 1

          end
          case alt_37
          when 1
            # at line 
            if @input.peek(1) == LOALPHA || @input.peek(1) == DIGIT || @input.peek(1) == T__30 || @input.peek(1) == T__39
              @input.consume
              @state.error_recovery = false
            else
              mse = MismatchedSet( nil )
              raise mse
            end



          else
            break # out of loop for decision 37
          end
        end # loop for decision 37
        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look( -1 )

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 29 )

      end
      
      return return_value
    end

    AttributeValueReturnValue = define_return_scope 

    # 
    # parser rule attribute_value
    # 
    # (in OCCI.g)
    # 155:1: attribute_value : ( ( '\"' ( ESC | ~ ( '\\\\' | '\"' | '\\'' ) | '\\'' )* '\"' ) | ( DIGIT ( '.' DIGIT )* ) ) ;
    # 
    def attribute_value
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 30 )
      return_value = AttributeValueReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      begin
        # at line 155:20: ( ( '\"' ( ESC | ~ ( '\\\\' | '\"' | '\\'' ) | '\\'' )* '\"' ) | ( DIGIT ( '.' DIGIT )* ) )
        # at line 155:20: ( ( '\"' ( ESC | ~ ( '\\\\' | '\"' | '\\'' ) | '\\'' )* '\"' ) | ( DIGIT ( '.' DIGIT )* ) )
        alt_40 = 2
        look_40_0 = @input.peek( 1 )

        if ( look_40_0 == T__14 )
          alt_40 = 1
        elsif ( look_40_0 == DIGIT )
          alt_40 = 2
        else
          raise NoViableAlternative( "", 40, 0 )
        end
        case alt_40
        when 1
          # at line 155:22: ( '\"' ( ESC | ~ ( '\\\\' | '\"' | '\\'' ) | '\\'' )* '\"' )
          # at line 155:22: ( '\"' ( ESC | ~ ( '\\\\' | '\"' | '\\'' ) | '\\'' )* '\"' )
          # at line 155:24: '\"' ( ESC | ~ ( '\\\\' | '\"' | '\\'' ) | '\\'' )* '\"'
          match( T__14, TOKENS_FOLLOWING_T__14_IN_attribute_value_1159 )
          # at line 155:28: ( ESC | ~ ( '\\\\' | '\"' | '\\'' ) | '\\'' )*
          while true # decision 38
            alt_38 = 2
            look_38_0 = @input.peek( 1 )

            if ( look_38_0.between?( WS, T__13 ) || look_38_0.between?( T__15, T__30 ) || look_38_0.between?( T__32, T__43 ) )
              alt_38 = 1

            end
            case alt_38
            when 1
              # at line 
              if @input.peek( 1 ).between?( WS, T__13 ) || @input.peek( 1 ).between?( T__15, T__30 ) || @input.peek( 1 ).between?( T__32, T__43 )
                @input.consume
                @state.error_recovery = false
              else
                mse = MismatchedSet( nil )
                raise mse
              end



            else
              break # out of loop for decision 38
            end
          end # loop for decision 38
          match( T__14, TOKENS_FOLLOWING_T__14_IN_attribute_value_1189 )


        when 2
          # at line 155:76: ( DIGIT ( '.' DIGIT )* )
          # at line 155:76: ( DIGIT ( '.' DIGIT )* )
          # at line 155:78: DIGIT ( '.' DIGIT )*
          match( DIGIT, TOKENS_FOLLOWING_DIGIT_IN_attribute_value_1196 )
          # at line 155:84: ( '.' DIGIT )*
          while true # decision 39
            alt_39 = 2
            look_39_0 = @input.peek( 1 )

            if ( look_39_0 == T__33 )
              alt_39 = 1

            end
            case alt_39
            when 1
              # at line 155:86: '.' DIGIT
              match( T__33, TOKENS_FOLLOWING_T__33_IN_attribute_value_1200 )
              match( DIGIT, TOKENS_FOLLOWING_DIGIT_IN_attribute_value_1202 )

            else
              break # out of loop for decision 39
            end
          end # loop for decision 39


        end
        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look( -1 )

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 30 )

      end
      
      return return_value
    end

    ActionLocationReturnValue = define_return_scope 

    # 
    # parser rule action_location
    # 
    # (in OCCI.g)
    # 156:1: action_location : uri ;
    # 
    def action_location
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 31 )
      return_value = ActionLocationReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      begin
        # at line 156:20: uri
        @state.following.push( TOKENS_FOLLOWING_uri_IN_action_location_1217 )
        uri
        @state.following.pop
        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look( -1 )

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 31 )

      end
      
      return return_value
    end

    TargetReturnValue = define_return_scope 

    # 
    # parser rule target
    # 
    # (in OCCI.g)
    # 157:1: target : uri ;
    # 
    def target
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 32 )
      return_value = TargetReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      begin
        # at line 157:12: uri
        @state.following.push( TOKENS_FOLLOWING_uri_IN_target_1226 )
        uri
        @state.following.pop
        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look( -1 )

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 32 )

      end
      
      return return_value
    end

    SelfLocationReturnValue = define_return_scope 

    # 
    # parser rule self_location
    # 
    # (in OCCI.g)
    # 158:1: self_location : uri ;
    # 
    def self_location
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 33 )
      return_value = SelfLocationReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      begin
        # at line 158:18: uri
        @state.following.push( TOKENS_FOLLOWING_uri_IN_self_location_1234 )
        uri
        @state.following.pop
        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look( -1 )

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 33 )

      end
      
      return return_value
    end

    CategoryNameReturnValue = define_return_scope 

    # 
    # parser rule category_name
    # 
    # (in OCCI.g)
    # 159:1: category_name : uri ;
    # 
    def category_name
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 34 )
      return_value = CategoryNameReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      begin
        # at line 159:18: uri
        @state.following.push( TOKENS_FOLLOWING_uri_IN_category_name_1242 )
        uri
        @state.following.pop
        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look( -1 )

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 34 )

      end
      
      return return_value
    end



    TOKENS_FOLLOWING_T__9_IN_category_42 = Set[ 10 ]
    TOKENS_FOLLOWING_T__10_IN_category_44 = Set[ 4, 5 ]
    TOKENS_FOLLOWING_category_value_IN_category_46 = Set[ 1 ]
    TOKENS_FOLLOWING_category_term_IN_category_value_78 = Set[ 11 ]
    TOKENS_FOLLOWING_category_scheme_IN_category_value_80 = Set[ 11 ]
    TOKENS_FOLLOWING_category_class_IN_category_value_82 = Set[ 1, 11 ]
    TOKENS_FOLLOWING_category_title_IN_category_value_84 = Set[ 1, 11 ]
    TOKENS_FOLLOWING_category_rel_IN_category_value_87 = Set[ 1, 11 ]
    TOKENS_FOLLOWING_category_location_IN_category_value_90 = Set[ 1, 11 ]
    TOKENS_FOLLOWING_category_attributes_IN_category_value_93 = Set[ 1, 11 ]
    TOKENS_FOLLOWING_category_actions_IN_category_value_96 = Set[ 1, 11 ]
    TOKENS_FOLLOWING_T__11_IN_category_value_99 = Set[ 1 ]
    TOKENS_FOLLOWING_WS_IN_category_term_131 = Set[ 4, 5 ]
    TOKENS_FOLLOWING_term_IN_category_term_134 = Set[ 1 ]
    TOKENS_FOLLOWING_T__11_IN_category_scheme_160 = Set[ 4, 12 ]
    TOKENS_FOLLOWING_WS_IN_category_scheme_162 = Set[ 12 ]
    TOKENS_FOLLOWING_T__12_IN_category_scheme_165 = Set[ 13 ]
    TOKENS_FOLLOWING_T__13_IN_category_scheme_167 = Set[ 14 ]
    TOKENS_FOLLOWING_T__14_IN_category_scheme_169 = Set[ 5, 6, 7, 10, 13, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42 ]
    TOKENS_FOLLOWING_scheme_IN_category_scheme_171 = Set[ 14 ]
    TOKENS_FOLLOWING_T__14_IN_category_scheme_173 = Set[ 1 ]
    TOKENS_FOLLOWING_T__11_IN_category_class_202 = Set[ 4, 15 ]
    TOKENS_FOLLOWING_WS_IN_category_class_204 = Set[ 15 ]
    TOKENS_FOLLOWING_T__15_IN_category_class_207 = Set[ 13 ]
    TOKENS_FOLLOWING_T__13_IN_category_class_209 = Set[ 14 ]
    TOKENS_FOLLOWING_T__14_IN_category_class_211 = Set[ 40, 41, 42 ]
    TOKENS_FOLLOWING_class_type_IN_category_class_213 = Set[ 14 ]
    TOKENS_FOLLOWING_T__14_IN_category_class_215 = Set[ 1 ]
    TOKENS_FOLLOWING_T__11_IN_category_title_240 = Set[ 4, 16 ]
    TOKENS_FOLLOWING_WS_IN_category_title_242 = Set[ 16 ]
    TOKENS_FOLLOWING_T__16_IN_category_title_245 = Set[ 13 ]
    TOKENS_FOLLOWING_T__13_IN_category_title_247 = Set[ 14 ]
    TOKENS_FOLLOWING_T__14_IN_category_title_249 = Set[ 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43 ]
    TOKENS_FOLLOWING_title_IN_category_title_251 = Set[ 14 ]
    TOKENS_FOLLOWING_T__14_IN_category_title_253 = Set[ 1 ]
    TOKENS_FOLLOWING_T__11_IN_category_rel_280 = Set[ 4, 17 ]
    TOKENS_FOLLOWING_WS_IN_category_rel_282 = Set[ 17 ]
    TOKENS_FOLLOWING_T__17_IN_category_rel_285 = Set[ 13 ]
    TOKENS_FOLLOWING_T__13_IN_category_rel_287 = Set[ 14 ]
    TOKENS_FOLLOWING_T__14_IN_category_rel_289 = Set[ 5, 6, 7, 10, 13, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42 ]
    TOKENS_FOLLOWING_rel_IN_category_rel_291 = Set[ 14 ]
    TOKENS_FOLLOWING_T__14_IN_category_rel_293 = Set[ 1 ]
    TOKENS_FOLLOWING_T__11_IN_category_location_318 = Set[ 4, 18 ]
    TOKENS_FOLLOWING_WS_IN_category_location_320 = Set[ 18 ]
    TOKENS_FOLLOWING_T__18_IN_category_location_323 = Set[ 13 ]
    TOKENS_FOLLOWING_T__13_IN_category_location_325 = Set[ 14 ]
    TOKENS_FOLLOWING_T__14_IN_category_location_327 = Set[ 5, 6, 7, 10, 13, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42 ]
    TOKENS_FOLLOWING_location_IN_category_location_329 = Set[ 14 ]
    TOKENS_FOLLOWING_T__14_IN_category_location_331 = Set[ 1 ]
    TOKENS_FOLLOWING_T__11_IN_category_attributes_370 = Set[ 4, 19 ]
    TOKENS_FOLLOWING_WS_IN_category_attributes_372 = Set[ 19 ]
    TOKENS_FOLLOWING_T__19_IN_category_attributes_375 = Set[ 13 ]
    TOKENS_FOLLOWING_T__13_IN_category_attributes_377 = Set[ 14 ]
    TOKENS_FOLLOWING_T__14_IN_category_attributes_379 = Set[ 5 ]
    TOKENS_FOLLOWING_attribute_name_IN_category_attributes_383 = Set[ 4, 5, 14 ]
    TOKENS_FOLLOWING_WS_IN_category_attributes_399 = Set[ 5 ]
    TOKENS_FOLLOWING_attribute_name_IN_category_attributes_404 = Set[ 4, 5, 14 ]
    TOKENS_FOLLOWING_T__14_IN_category_attributes_412 = Set[ 1 ]
    TOKENS_FOLLOWING_T__11_IN_category_actions_442 = Set[ 4, 20 ]
    TOKENS_FOLLOWING_WS_IN_category_actions_444 = Set[ 20 ]
    TOKENS_FOLLOWING_T__20_IN_category_actions_447 = Set[ 13 ]
    TOKENS_FOLLOWING_T__13_IN_category_actions_449 = Set[ 14 ]
    TOKENS_FOLLOWING_T__14_IN_category_actions_451 = Set[ 5, 6, 7, 10, 13, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42 ]
    TOKENS_FOLLOWING_action_location_IN_category_actions_455 = Set[ 4, 5, 6, 7, 10, 13, 14, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42 ]
    TOKENS_FOLLOWING_WS_IN_category_actions_471 = Set[ 5, 6, 7, 10, 13, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42 ]
    TOKENS_FOLLOWING_action_location_IN_category_actions_476 = Set[ 4, 5, 6, 7, 10, 13, 14, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42 ]
    TOKENS_FOLLOWING_T__14_IN_category_actions_483 = Set[ 1 ]
    TOKENS_FOLLOWING_T__21_IN_link_505 = Set[ 10 ]
    TOKENS_FOLLOWING_T__10_IN_link_507 = Set[ 4, 22 ]
    TOKENS_FOLLOWING_link_value_IN_link_509 = Set[ 1 ]
    TOKENS_FOLLOWING_link_target_IN_link_value_531 = Set[ 11 ]
    TOKENS_FOLLOWING_link_rel_IN_link_value_540 = Set[ 11 ]
    TOKENS_FOLLOWING_link_self_IN_link_value_549 = Set[ 11 ]
    TOKENS_FOLLOWING_link_category_IN_link_value_559 = Set[ 11 ]
    TOKENS_FOLLOWING_link_attributes_IN_link_value_569 = Set[ 1, 11 ]
    TOKENS_FOLLOWING_T__11_IN_link_value_578 = Set[ 1 ]
    TOKENS_FOLLOWING_WS_IN_link_target_597 = Set[ 22 ]
    TOKENS_FOLLOWING_T__22_IN_link_target_600 = Set[ 5, 6, 7, 10, 13, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42 ]
    TOKENS_FOLLOWING_target_IN_link_target_602 = Set[ 23 ]
    TOKENS_FOLLOWING_T__23_IN_link_target_604 = Set[ 1 ]
    TOKENS_FOLLOWING_T__11_IN_link_rel_619 = Set[ 4, 17 ]
    TOKENS_FOLLOWING_WS_IN_link_rel_621 = Set[ 17 ]
    TOKENS_FOLLOWING_T__17_IN_link_rel_624 = Set[ 13 ]
    TOKENS_FOLLOWING_T__13_IN_link_rel_626 = Set[ 14 ]
    TOKENS_FOLLOWING_T__14_IN_link_rel_628 = Set[ 5, 6, 7, 10, 13, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42 ]
    TOKENS_FOLLOWING_rel_IN_link_rel_630 = Set[ 14 ]
    TOKENS_FOLLOWING_T__14_IN_link_rel_632 = Set[ 1 ]
    TOKENS_FOLLOWING_T__11_IN_link_self_647 = Set[ 4, 24 ]
    TOKENS_FOLLOWING_WS_IN_link_self_649 = Set[ 24 ]
    TOKENS_FOLLOWING_T__24_IN_link_self_652 = Set[ 13 ]
    TOKENS_FOLLOWING_T__13_IN_link_self_654 = Set[ 14 ]
    TOKENS_FOLLOWING_T__14_IN_link_self_656 = Set[ 5, 6, 7, 10, 13, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42 ]
    TOKENS_FOLLOWING_self_location_IN_link_self_658 = Set[ 14 ]
    TOKENS_FOLLOWING_T__14_IN_link_self_660 = Set[ 1 ]
    TOKENS_FOLLOWING_T__11_IN_link_category_675 = Set[ 4, 25 ]
    TOKENS_FOLLOWING_WS_IN_link_category_677 = Set[ 25 ]
    TOKENS_FOLLOWING_T__25_IN_link_category_680 = Set[ 13 ]
    TOKENS_FOLLOWING_T__13_IN_link_category_682 = Set[ 14 ]
    TOKENS_FOLLOWING_T__14_IN_link_category_684 = Set[ 5, 6, 7, 10, 13, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42 ]
    TOKENS_FOLLOWING_category_name_IN_link_category_686 = Set[ 14 ]
    TOKENS_FOLLOWING_T__14_IN_link_category_688 = Set[ 1 ]
    TOKENS_FOLLOWING_T__11_IN_link_attributes_714 = Set[ 4, 5 ]
    TOKENS_FOLLOWING_WS_IN_link_attributes_716 = Set[ 4, 5 ]
    TOKENS_FOLLOWING_attribute_IN_link_attributes_719 = Set[ 1, 11 ]
    TOKENS_FOLLOWING_T__26_IN_x_occi_attribute_746 = Set[ 10 ]
    TOKENS_FOLLOWING_T__10_IN_x_occi_attribute_748 = Set[ 4, 5 ]
    TOKENS_FOLLOWING_WS_IN_x_occi_attribute_750 = Set[ 4, 5 ]
    TOKENS_FOLLOWING_attribute_IN_x_occi_attribute_753 = Set[ 1, 11 ]
    TOKENS_FOLLOWING_T__11_IN_x_occi_attribute_755 = Set[ 1 ]
    TOKENS_FOLLOWING_T__27_IN_x_occi_location_775 = Set[ 10 ]
    TOKENS_FOLLOWING_T__10_IN_x_occi_location_777 = Set[ 4, 5, 6, 7, 10, 13, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42 ]
    TOKENS_FOLLOWING_WS_IN_x_occi_location_779 = Set[ 5, 6, 7, 10, 13, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42 ]
    TOKENS_FOLLOWING_location_IN_x_occi_location_782 = Set[ 1, 11 ]
    TOKENS_FOLLOWING_T__11_IN_x_occi_location_784 = Set[ 1 ]
    TOKENS_FOLLOWING_set_IN_uri_798 = Set[ 1, 5, 6, 7, 10, 13, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42 ]
    TOKENS_FOLLOWING_LOALPHA_IN_term_888 = Set[ 1, 5, 7, 30, 39 ]
    TOKENS_FOLLOWING_set_IN_term_890 = Set[ 1, 5, 7, 30, 39 ]
    TOKENS_FOLLOWING_uri_IN_scheme_923 = Set[ 1 ]
    TOKENS_FOLLOWING_set_IN_class_type_932 = Set[ 1 ]
    TOKENS_FOLLOWING_set_IN_title_953 = Set[ 1, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43 ]
    TOKENS_FOLLOWING_uri_IN_rel_988 = Set[ 1 ]
    TOKENS_FOLLOWING_uri_IN_location_996 = Set[ 1 ]
    TOKENS_FOLLOWING_attribute_component_IN_attribute_1018 = Set[ 13, 33 ]
    TOKENS_FOLLOWING_T__33_IN_attribute_1030 = Set[ 5 ]
    TOKENS_FOLLOWING_attribute_component_IN_attribute_1034 = Set[ 13, 33 ]
    TOKENS_FOLLOWING_T__13_IN_attribute_1046 = Set[ 7, 14 ]
    TOKENS_FOLLOWING_attribute_value_IN_attribute_1048 = Set[ 1 ]
    TOKENS_FOLLOWING_attribute_component_IN_attribute_name_1092 = Set[ 1, 33 ]
    TOKENS_FOLLOWING_T__33_IN_attribute_name_1104 = Set[ 5 ]
    TOKENS_FOLLOWING_attribute_component_IN_attribute_name_1108 = Set[ 1, 33 ]
    TOKENS_FOLLOWING_LOALPHA_IN_attribute_component_1128 = Set[ 1, 5, 7, 30, 39 ]
    TOKENS_FOLLOWING_set_IN_attribute_component_1130 = Set[ 1, 5, 7, 30, 39 ]
    TOKENS_FOLLOWING_T__14_IN_attribute_value_1159 = Set[ 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43 ]
    TOKENS_FOLLOWING_set_IN_attribute_value_1161 = Set[ 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43 ]
    TOKENS_FOLLOWING_T__14_IN_attribute_value_1189 = Set[ 1 ]
    TOKENS_FOLLOWING_DIGIT_IN_attribute_value_1196 = Set[ 1, 33 ]
    TOKENS_FOLLOWING_T__33_IN_attribute_value_1200 = Set[ 7 ]
    TOKENS_FOLLOWING_DIGIT_IN_attribute_value_1202 = Set[ 1, 33 ]
    TOKENS_FOLLOWING_uri_IN_action_location_1217 = Set[ 1 ]
    TOKENS_FOLLOWING_uri_IN_target_1226 = Set[ 1 ]
    TOKENS_FOLLOWING_uri_IN_self_location_1234 = Set[ 1 ]
    TOKENS_FOLLOWING_uri_IN_category_name_1242 = Set[ 1 ]

  end # class Parser < ANTLR3::Parser

  at_exit { Parser.main( ARGV ) } if __FILE__ == $0
end

