**free

ctl-opt dftactgrp(*no);

dcl-pi P41;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P35.rpgleinc'
/copy 'qrpgleref/P13.rpgleinc'
/copy 'qrpgleref/P7.rpgleinc'

dcl-ds T224 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T224 FROM T224 LIMIT 1;

theCharVar = 'Hello from P41';
dsply theCharVar;
P35();
P13();
P7();
return;