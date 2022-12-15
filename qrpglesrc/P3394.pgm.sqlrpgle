**free

ctl-opt dftactgrp(*no);

dcl-pi P3394;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P507.rpgleinc'
/copy 'qrpgleref/P2001.rpgleinc'
/copy 'qrpgleref/P1877.rpgleinc'

dcl-ds T1441 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1441 FROM T1441 LIMIT 1;

theCharVar = 'Hello from P3394';
dsply theCharVar;
P507();
P2001();
P1877();
return;