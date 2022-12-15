**free

ctl-opt dftactgrp(*no);

dcl-pi P2294;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P754.rpgleinc'
/copy 'qrpgleref/P2219.rpgleinc'
/copy 'qrpgleref/P671.rpgleinc'

dcl-ds T701 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T701 FROM T701 LIMIT 1;

theCharVar = 'Hello from P2294';
dsply theCharVar;
P754();
P2219();
P671();
return;