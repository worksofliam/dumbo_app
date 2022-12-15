**free

ctl-opt dftactgrp(*no);

dcl-pi P354;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P110.rpgleinc'
/copy 'qrpgleref/P341.rpgleinc'
/copy 'qrpgleref/P50.rpgleinc'

dcl-ds T454 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T454 FROM T454 LIMIT 1;

theCharVar = 'Hello from P354';
dsply theCharVar;
P110();
P341();
P50();
return;