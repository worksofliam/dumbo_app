**free

ctl-opt dftactgrp(*no);

dcl-pi P4428;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1174.rpgleinc'
/copy 'qrpgleref/P520.rpgleinc'
/copy 'qrpgleref/P714.rpgleinc'

dcl-ds theTable extname('T21') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T21 LIMIT 1;

theCharVar = 'Hello from P4428';
dsply theCharVar;
P1174();
P520();
P714();
return;