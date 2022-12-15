**free

ctl-opt dftactgrp(*no);

dcl-pi P3924;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2334.rpgleinc'
/copy 'qrpgleref/P453.rpgleinc'
/copy 'qrpgleref/P3520.rpgleinc'

dcl-ds theTable extname('T1175') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1175 LIMIT 1;

theCharVar = 'Hello from P3924';
dsply theCharVar;
P2334();
P453();
P3520();
return;