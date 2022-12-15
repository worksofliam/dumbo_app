**free

ctl-opt dftactgrp(*no);

dcl-pi P766;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P463.rpgleinc'
/copy 'qrpgleref/P354.rpgleinc'
/copy 'qrpgleref/P37.rpgleinc'

dcl-ds T1041 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1041 FROM T1041 LIMIT 1;

theCharVar = 'Hello from P766';
dsply theCharVar;
P463();
P354();
P37();
return;