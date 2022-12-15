**free

ctl-opt dftactgrp(*no);

dcl-pi P3476;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2113.rpgleinc'
/copy 'qrpgleref/P3451.rpgleinc'
/copy 'qrpgleref/P927.rpgleinc'

dcl-ds T1522 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1522 FROM T1522 LIMIT 1;

theCharVar = 'Hello from P3476';
dsply theCharVar;
P2113();
P3451();
P927();
return;