**free

ctl-opt dftactgrp(*no);

dcl-pi P819;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P155.rpgleinc'
/copy 'qrpgleref/P546.rpgleinc'
/copy 'qrpgleref/P794.rpgleinc'

dcl-ds T1136 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1136 FROM T1136 LIMIT 1;

theCharVar = 'Hello from P819';
dsply theCharVar;
P155();
P546();
P794();
return;