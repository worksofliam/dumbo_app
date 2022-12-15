**free

ctl-opt dftactgrp(*no);

dcl-pi P117;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P70.rpgleinc'
/copy 'qrpgleref/P113.rpgleinc'
/copy 'qrpgleref/P36.rpgleinc'

dcl-ds T386 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T386 FROM T386 LIMIT 1;

theCharVar = 'Hello from P117';
dsply theCharVar;
P70();
P113();
P36();
return;