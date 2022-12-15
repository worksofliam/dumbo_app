**free

ctl-opt dftactgrp(*no);

dcl-pi P104;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P84.rpgleinc'
/copy 'qrpgleref/P16.rpgleinc'

dcl-ds theTable extname('T637') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T637 LIMIT 1;

theCharVar = 'Hello from P104';
dsply theCharVar;
P84();
P16();
return;