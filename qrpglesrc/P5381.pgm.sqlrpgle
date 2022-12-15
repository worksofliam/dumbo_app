**free

ctl-opt dftactgrp(*no);

dcl-pi P5381;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4806.rpgleinc'
/copy 'qrpgleref/P2968.rpgleinc'
/copy 'qrpgleref/P4997.rpgleinc'

dcl-ds T778 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T778 FROM T778 LIMIT 1;

theCharVar = 'Hello from P5381';
dsply theCharVar;
P4806();
P2968();
P4997();
return;