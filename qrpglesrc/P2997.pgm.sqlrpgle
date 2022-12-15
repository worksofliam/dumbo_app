**free

ctl-opt dftactgrp(*no);

dcl-pi P2997;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1106.rpgleinc'
/copy 'qrpgleref/P2563.rpgleinc'
/copy 'qrpgleref/P862.rpgleinc'

dcl-ds T1165 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1165 FROM T1165 LIMIT 1;

theCharVar = 'Hello from P2997';
dsply theCharVar;
P1106();
P2563();
P862();
return;