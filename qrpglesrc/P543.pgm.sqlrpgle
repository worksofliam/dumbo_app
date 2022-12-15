**free

ctl-opt dftactgrp(*no);

dcl-pi P543;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P130.rpgleinc'
/copy 'qrpgleref/P379.rpgleinc'
/copy 'qrpgleref/P385.rpgleinc'

dcl-ds T13 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T13 FROM T13 LIMIT 1;

theCharVar = 'Hello from P543';
dsply theCharVar;
P130();
P379();
P385();
return;