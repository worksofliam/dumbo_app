**free

ctl-opt dftactgrp(*no);

dcl-pi P712;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P416.rpgleinc'
/copy 'qrpgleref/P295.rpgleinc'
/copy 'qrpgleref/P260.rpgleinc'

dcl-ds T1216 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1216 FROM T1216 LIMIT 1;

theCharVar = 'Hello from P712';
dsply theCharVar;
P416();
P295();
P260();
return;