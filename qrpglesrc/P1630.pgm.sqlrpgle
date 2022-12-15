**free

ctl-opt dftactgrp(*no);

dcl-pi P1630;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P950.rpgleinc'
/copy 'qrpgleref/P463.rpgleinc'
/copy 'qrpgleref/P863.rpgleinc'

dcl-ds T250 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T250 FROM T250 LIMIT 1;

theCharVar = 'Hello from P1630';
dsply theCharVar;
P950();
P463();
P863();
return;