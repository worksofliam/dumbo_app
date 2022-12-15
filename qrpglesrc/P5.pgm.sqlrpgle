**free

ctl-opt dftactgrp(*no);

dcl-pi P5;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4.rpgleinc'
/copy 'qrpgleref/P2.rpgleinc'

dcl-ds T1517 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1517 FROM T1517 LIMIT 1;

theCharVar = 'Hello from P5';
dsply theCharVar;
P4();
P2();
return;