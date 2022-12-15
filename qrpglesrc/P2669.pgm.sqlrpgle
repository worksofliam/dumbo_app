**free

ctl-opt dftactgrp(*no);

dcl-pi P2669;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P365.rpgleinc'
/copy 'qrpgleref/P2235.rpgleinc'
/copy 'qrpgleref/P2352.rpgleinc'

dcl-ds T1399 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1399 FROM T1399 LIMIT 1;

theCharVar = 'Hello from P2669';
dsply theCharVar;
P365();
P2235();
P2352();
return;