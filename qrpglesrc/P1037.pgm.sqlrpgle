**free

ctl-opt dftactgrp(*no);

dcl-pi P1037;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P632.rpgleinc'
/copy 'qrpgleref/P431.rpgleinc'
/copy 'qrpgleref/P677.rpgleinc'

dcl-ds T335 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T335 FROM T335 LIMIT 1;

theCharVar = 'Hello from P1037';
dsply theCharVar;
P632();
P431();
P677();
return;