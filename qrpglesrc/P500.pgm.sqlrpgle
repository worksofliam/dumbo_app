**free

ctl-opt dftactgrp(*no);

dcl-pi P500;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P257.rpgleinc'
/copy 'qrpgleref/P167.rpgleinc'
/copy 'qrpgleref/P406.rpgleinc'

dcl-ds theTable extname('T187') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T187 LIMIT 1;

theCharVar = 'Hello from P500';
dsply theCharVar;
P257();
P167();
P406();
return;