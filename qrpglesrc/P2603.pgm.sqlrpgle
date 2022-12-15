**free

ctl-opt dftactgrp(*no);

dcl-pi P2603;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1828.rpgleinc'
/copy 'qrpgleref/P512.rpgleinc'
/copy 'qrpgleref/P748.rpgleinc'

dcl-ds T1302 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1302 FROM T1302 LIMIT 1;

theCharVar = 'Hello from P2603';
dsply theCharVar;
P1828();
P512();
P748();
return;