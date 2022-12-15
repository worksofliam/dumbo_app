**free

ctl-opt dftactgrp(*no);

dcl-pi P3630;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3105.rpgleinc'
/copy 'qrpgleref/P3560.rpgleinc'
/copy 'qrpgleref/P2100.rpgleinc'

dcl-ds T1219 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1219 FROM T1219 LIMIT 1;

theCharVar = 'Hello from P3630';
dsply theCharVar;
P3105();
P3560();
P2100();
return;