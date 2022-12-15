**free

ctl-opt dftactgrp(*no);

dcl-pi P3563;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P449.rpgleinc'
/copy 'qrpgleref/P2181.rpgleinc'
/copy 'qrpgleref/P1877.rpgleinc'

dcl-ds T41 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T41 FROM T41 LIMIT 1;

theCharVar = 'Hello from P3563';
dsply theCharVar;
P449();
P2181();
P1877();
return;