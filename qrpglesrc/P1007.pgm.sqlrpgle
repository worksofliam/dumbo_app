**free

ctl-opt dftactgrp(*no);

dcl-pi P1007;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P740.rpgleinc'
/copy 'qrpgleref/P219.rpgleinc'
/copy 'qrpgleref/P665.rpgleinc'

dcl-ds theTable extname('T326') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T326 LIMIT 1;

theCharVar = 'Hello from P1007';
dsply theCharVar;
P740();
P219();
P665();
return;