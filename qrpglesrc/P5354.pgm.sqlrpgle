**free

ctl-opt dftactgrp(*no);

dcl-pi P5354;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2020.rpgleinc'
/copy 'qrpgleref/P295.rpgleinc'
/copy 'qrpgleref/P4578.rpgleinc'

dcl-ds T1614 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1614 FROM T1614 LIMIT 1;

theCharVar = 'Hello from P5354';
dsply theCharVar;
P2020();
P295();
P4578();
return;