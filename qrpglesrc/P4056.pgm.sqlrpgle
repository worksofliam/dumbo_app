**free

ctl-opt dftactgrp(*no);

dcl-pi P4056;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1015.rpgleinc'
/copy 'qrpgleref/P2271.rpgleinc'
/copy 'qrpgleref/P490.rpgleinc'

dcl-ds theTable extname('T43') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T43 LIMIT 1;

theCharVar = 'Hello from P4056';
dsply theCharVar;
P1015();
P2271();
P490();
return;