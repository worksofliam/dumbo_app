**free

ctl-opt dftactgrp(*no);

dcl-pi P195;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P38.rpgleinc'
/copy 'qrpgleref/P122.rpgleinc'
/copy 'qrpgleref/P155.rpgleinc'

dcl-ds T140 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T140 FROM T140 LIMIT 1;

theCharVar = 'Hello from P195';
dsply theCharVar;
P38();
P122();
P155();
return;