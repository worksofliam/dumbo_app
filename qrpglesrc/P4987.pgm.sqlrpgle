**free

ctl-opt dftactgrp(*no);

dcl-pi P4987;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1558.rpgleinc'
/copy 'qrpgleref/P424.rpgleinc'
/copy 'qrpgleref/P2568.rpgleinc'

dcl-ds theTable extname('T676') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T676 LIMIT 1;

theCharVar = 'Hello from P4987';
dsply theCharVar;
P1558();
P424();
P2568();
return;