**free

ctl-opt dftactgrp(*no);

dcl-pi P1318;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P357.rpgleinc'
/copy 'qrpgleref/P1306.rpgleinc'
/copy 'qrpgleref/P407.rpgleinc'

dcl-ds T518 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T518 FROM T518 LIMIT 1;

theCharVar = 'Hello from P1318';
dsply theCharVar;
P357();
P1306();
P407();
return;