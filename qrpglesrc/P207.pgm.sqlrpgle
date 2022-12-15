**free

ctl-opt dftactgrp(*no);

dcl-pi P207;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P60.rpgleinc'
/copy 'qrpgleref/P110.rpgleinc'
/copy 'qrpgleref/P19.rpgleinc'

dcl-ds theTable extname('T611') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T611 LIMIT 1;

theCharVar = 'Hello from P207';
dsply theCharVar;
P60();
P110();
P19();
return;