**free

ctl-opt dftactgrp(*no);

dcl-pi P1331;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P971.rpgleinc'
/copy 'qrpgleref/P292.rpgleinc'
/copy 'qrpgleref/P334.rpgleinc'

dcl-ds T250 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T250 FROM T250 LIMIT 1;

theCharVar = 'Hello from P1331';
dsply theCharVar;
P971();
P292();
P334();
return;