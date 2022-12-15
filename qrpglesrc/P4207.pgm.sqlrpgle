**free

ctl-opt dftactgrp(*no);

dcl-pi P4207;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P530.rpgleinc'
/copy 'qrpgleref/P1451.rpgleinc'
/copy 'qrpgleref/P4008.rpgleinc'

dcl-ds theTable extname('T1010') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1010 LIMIT 1;

theCharVar = 'Hello from P4207';
dsply theCharVar;
P530();
P1451();
P4008();
return;