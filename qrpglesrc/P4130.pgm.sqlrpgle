**free

ctl-opt dftactgrp(*no);

dcl-pi P4130;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2528.rpgleinc'
/copy 'qrpgleref/P3153.rpgleinc'
/copy 'qrpgleref/P2995.rpgleinc'

dcl-ds T1424 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1424 FROM T1424 LIMIT 1;

theCharVar = 'Hello from P4130';
dsply theCharVar;
P2528();
P3153();
P2995();
return;