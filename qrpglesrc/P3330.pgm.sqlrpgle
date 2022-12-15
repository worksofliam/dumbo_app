**free

ctl-opt dftactgrp(*no);

dcl-pi P3330;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1271.rpgleinc'
/copy 'qrpgleref/P2714.rpgleinc'
/copy 'qrpgleref/P2643.rpgleinc'

dcl-ds theTable extname('T694') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T694 LIMIT 1;

theCharVar = 'Hello from P3330';
dsply theCharVar;
P1271();
P2714();
P2643();
return;