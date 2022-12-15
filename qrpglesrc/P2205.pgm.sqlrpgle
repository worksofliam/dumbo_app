**free

ctl-opt dftactgrp(*no);

dcl-pi P2205;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P530.rpgleinc'
/copy 'qrpgleref/P2013.rpgleinc'
/copy 'qrpgleref/P238.rpgleinc'

dcl-ds theTable extname('T1044') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1044 LIMIT 1;

theCharVar = 'Hello from P2205';
dsply theCharVar;
P530();
P2013();
P238();
return;