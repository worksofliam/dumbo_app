**free

ctl-opt dftactgrp(*no);

dcl-pi P1008;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P194.rpgleinc'
/copy 'qrpgleref/P996.rpgleinc'
/copy 'qrpgleref/P225.rpgleinc'

dcl-ds T410 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T410 FROM T410 LIMIT 1;

theCharVar = 'Hello from P1008';
dsply theCharVar;
P194();
P996();
P225();
return;