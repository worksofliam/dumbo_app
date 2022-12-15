**free

ctl-opt dftactgrp(*no);

dcl-pi P4876;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1367.rpgleinc'
/copy 'qrpgleref/P4008.rpgleinc'
/copy 'qrpgleref/P1892.rpgleinc'

dcl-ds T1816 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1816 FROM T1816 LIMIT 1;

theCharVar = 'Hello from P4876';
dsply theCharVar;
P1367();
P4008();
P1892();
return;