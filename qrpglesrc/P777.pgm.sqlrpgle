**free

ctl-opt dftactgrp(*no);

dcl-pi P777;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P103.rpgleinc'
/copy 'qrpgleref/P522.rpgleinc'
/copy 'qrpgleref/P614.rpgleinc'

dcl-ds T1257 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1257 FROM T1257 LIMIT 1;

theCharVar = 'Hello from P777';
dsply theCharVar;
P103();
P522();
P614();
return;