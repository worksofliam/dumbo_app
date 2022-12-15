**free

ctl-opt dftactgrp(*no);

dcl-pi P3214;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2931.rpgleinc'
/copy 'qrpgleref/P886.rpgleinc'
/copy 'qrpgleref/P143.rpgleinc'

dcl-ds theTable extname('T319') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T319 LIMIT 1;

theCharVar = 'Hello from P3214';
dsply theCharVar;
P2931();
P886();
P143();
return;