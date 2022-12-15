**free

ctl-opt dftactgrp(*no);

dcl-pi P1107;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P517.rpgleinc'
/copy 'qrpgleref/P466.rpgleinc'
/copy 'qrpgleref/P400.rpgleinc'

dcl-ds theTable extname('T155') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T155 LIMIT 1;

theCharVar = 'Hello from P1107';
dsply theCharVar;
P517();
P466();
P400();
return;