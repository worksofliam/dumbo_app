**free

ctl-opt dftactgrp(*no);

dcl-pi P16;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P10.rpgleinc'
/copy 'qrpgleref/P5.rpgleinc'
/copy 'qrpgleref/P4.rpgleinc'

dcl-ds T189 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T189 FROM T189 LIMIT 1;

theCharVar = 'Hello from P16';
dsply theCharVar;
P10();
P5();
P4();
return;