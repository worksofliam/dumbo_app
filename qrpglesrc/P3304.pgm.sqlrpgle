**free

ctl-opt dftactgrp(*no);

dcl-pi P3304;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P207.rpgleinc'
/copy 'qrpgleref/P1936.rpgleinc'
/copy 'qrpgleref/P1013.rpgleinc'

dcl-ds theTable extname('T791') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T791 LIMIT 1;

theCharVar = 'Hello from P3304';
dsply theCharVar;
P207();
P1936();
P1013();
return;