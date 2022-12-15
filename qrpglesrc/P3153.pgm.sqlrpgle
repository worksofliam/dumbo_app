**free

ctl-opt dftactgrp(*no);

dcl-pi P3153;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P936.rpgleinc'
/copy 'qrpgleref/P2576.rpgleinc'
/copy 'qrpgleref/P2889.rpgleinc'

dcl-ds T700 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T700 FROM T700 LIMIT 1;

theCharVar = 'Hello from P3153';
dsply theCharVar;
P936();
P2576();
P2889();
return;