**free

ctl-opt dftactgrp(*no);

dcl-pi P1477;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P138.rpgleinc'
/copy 'qrpgleref/P412.rpgleinc'
/copy 'qrpgleref/P1402.rpgleinc'

dcl-ds T32 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T32 FROM T32 LIMIT 1;

theCharVar = 'Hello from P1477';
dsply theCharVar;
P138();
P412();
P1402();
return;