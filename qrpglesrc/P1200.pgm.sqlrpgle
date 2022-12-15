**free

ctl-opt dftactgrp(*no);

dcl-pi P1200;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P25.rpgleinc'
/copy 'qrpgleref/P1126.rpgleinc'
/copy 'qrpgleref/P242.rpgleinc'

dcl-ds T443 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T443 FROM T443 LIMIT 1;

theCharVar = 'Hello from P1200';
dsply theCharVar;
P25();
P1126();
P242();
return;