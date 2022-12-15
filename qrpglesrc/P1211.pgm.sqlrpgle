**free

ctl-opt dftactgrp(*no);

dcl-pi P1211;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1120.rpgleinc'
/copy 'qrpgleref/P639.rpgleinc'
/copy 'qrpgleref/P498.rpgleinc'

dcl-ds T479 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T479 FROM T479 LIMIT 1;

theCharVar = 'Hello from P1211';
dsply theCharVar;
P1120();
P639();
P498();
return;