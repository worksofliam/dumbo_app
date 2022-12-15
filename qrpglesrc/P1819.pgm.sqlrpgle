**free

ctl-opt dftactgrp(*no);

dcl-pi P1819;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P484.rpgleinc'
/copy 'qrpgleref/P528.rpgleinc'
/copy 'qrpgleref/P826.rpgleinc'

dcl-ds theTable extname('T1154') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1154 LIMIT 1;

theCharVar = 'Hello from P1819';
dsply theCharVar;
P484();
P528();
P826();
return;