**free

ctl-opt dftactgrp(*no);

dcl-pi P4913;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1072.rpgleinc'
/copy 'qrpgleref/P286.rpgleinc'
/copy 'qrpgleref/P1952.rpgleinc'

dcl-ds theTable extname('T1163') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1163 LIMIT 1;

theCharVar = 'Hello from P4913';
dsply theCharVar;
P1072();
P286();
P1952();
return;