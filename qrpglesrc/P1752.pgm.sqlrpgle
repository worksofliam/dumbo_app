**free

ctl-opt dftactgrp(*no);

dcl-pi P1752;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P263.rpgleinc'
/copy 'qrpgleref/P1167.rpgleinc'
/copy 'qrpgleref/P1622.rpgleinc'

dcl-ds theTable extname('T884') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T884 LIMIT 1;

theCharVar = 'Hello from P1752';
dsply theCharVar;
P263();
P1167();
P1622();
return;