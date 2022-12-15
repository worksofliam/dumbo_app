**free

ctl-opt dftactgrp(*no);

dcl-pi P242;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P162.rpgleinc'
/copy 'qrpgleref/P135.rpgleinc'
/copy 'qrpgleref/P166.rpgleinc'

dcl-ds T194 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T194 FROM T194 LIMIT 1;

theCharVar = 'Hello from P242';
dsply theCharVar;
P162();
P135();
P166();
return;