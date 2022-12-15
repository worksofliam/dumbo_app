**free

ctl-opt dftactgrp(*no);

dcl-pi P463;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P392.rpgleinc'
/copy 'qrpgleref/P312.rpgleinc'
/copy 'qrpgleref/P165.rpgleinc'

dcl-ds T1846 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1846 FROM T1846 LIMIT 1;

theCharVar = 'Hello from P463';
dsply theCharVar;
P392();
P312();
P165();
return;