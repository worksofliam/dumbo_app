**free

ctl-opt dftactgrp(*no);

dcl-pi P4115;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2627.rpgleinc'
/copy 'qrpgleref/P550.rpgleinc'
/copy 'qrpgleref/P2194.rpgleinc'

dcl-ds theTable extname('T1794') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1794 LIMIT 1;

theCharVar = 'Hello from P4115';
dsply theCharVar;
P2627();
P550();
P2194();
return;