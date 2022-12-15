**free

ctl-opt dftactgrp(*no);

dcl-pi P137;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P114.rpgleinc'
/copy 'qrpgleref/P79.rpgleinc'
/copy 'qrpgleref/P18.rpgleinc'

dcl-ds T485 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T485 FROM T485 LIMIT 1;

theCharVar = 'Hello from P137';
dsply theCharVar;
P114();
P79();
P18();
return;