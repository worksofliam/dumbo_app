**free

ctl-opt dftactgrp(*no);

dcl-pi P182;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P154.rpgleinc'
/copy 'qrpgleref/P130.rpgleinc'
/copy 'qrpgleref/P81.rpgleinc'

dcl-ds T78 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T78 FROM T78 LIMIT 1;

theCharVar = 'Hello from P182';
dsply theCharVar;
P154();
P130();
P81();
return;