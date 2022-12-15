**free

ctl-opt dftactgrp(*no);

dcl-pi P3749;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1102.rpgleinc'
/copy 'qrpgleref/P332.rpgleinc'
/copy 'qrpgleref/P3280.rpgleinc'

dcl-ds T145 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T145 FROM T145 LIMIT 1;

theCharVar = 'Hello from P3749';
dsply theCharVar;
P1102();
P332();
P3280();
return;