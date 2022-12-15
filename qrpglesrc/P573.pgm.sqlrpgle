**free

ctl-opt dftactgrp(*no);

dcl-pi P573;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P141.rpgleinc'
/copy 'qrpgleref/P100.rpgleinc'
/copy 'qrpgleref/P303.rpgleinc'

dcl-ds T276 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T276 FROM T276 LIMIT 1;

theCharVar = 'Hello from P573';
dsply theCharVar;
P141();
P100();
P303();
return;