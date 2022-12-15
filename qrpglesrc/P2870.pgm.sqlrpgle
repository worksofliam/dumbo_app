**free

ctl-opt dftactgrp(*no);

dcl-pi P2870;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P661.rpgleinc'
/copy 'qrpgleref/P2367.rpgleinc'
/copy 'qrpgleref/P1325.rpgleinc'

dcl-ds T1113 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1113 FROM T1113 LIMIT 1;

theCharVar = 'Hello from P2870';
dsply theCharVar;
P661();
P2367();
P1325();
return;