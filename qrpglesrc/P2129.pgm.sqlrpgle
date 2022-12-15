**free

ctl-opt dftactgrp(*no);

dcl-pi P2129;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1658.rpgleinc'
/copy 'qrpgleref/P572.rpgleinc'
/copy 'qrpgleref/P625.rpgleinc'

dcl-ds theTable extname('T928') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T928 LIMIT 1;

theCharVar = 'Hello from P2129';
dsply theCharVar;
P1658();
P572();
P625();
return;